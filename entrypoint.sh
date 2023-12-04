echo "Hello $1"
time=$(date)
{%- ifversion actions-save-state-set-output-envs %}
echo "time=$time" >> $GITHUB_OUTPUT
{%- else %}
echo "::set-output name=time::$time"
{%- endif %}
